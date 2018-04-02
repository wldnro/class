<%@page import="shop.InsertDB"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	try{
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String grade=request.getParameter("grade");
		String ad=request.getParameter("ad");
		if(name==null&& phone==null&& address==null&& grade==null&&ad==null){
			
		}else{
			InsertDB in=new InsertDB();
			in.insert(name, phone, address, grade, ad);
		}
	}catch(Exception e){
	}
%>
<style>
input{
	margin-bottom: 1%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="POST">
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="phone" placeholder="번호"><br>
	<input type="text" name="address" placeholder="주소"><br>
	<input type="text" name="grade" placeholder="등급" maxlength="1">
	<br>
		<input type="text" name="ad" placeholder="지역코드" maxlength="2">
	<br>
	<input type="submit" value="회원가입">
</form>
</body>
</html>