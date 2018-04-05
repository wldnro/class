<!DOCTYPE html>
<%@page import="db.MyDb"%>
<html>
<head>
<meta charset="UTF-8">
<title>사원 및 부서조회</title>
<style>
body{
	margin: 0 0;
	padding:0 0;
	background-color: black;
	color: white;
}
table{
	margin:0 auto;
	border: solid 3px white;
	border-collapse: collapse;
	margin-bottom: 3%;
}
td{
	padding: 1%;
	border: solid 1px white;
	width: 10%;
	text-align: center;
	cursor: pointer;
}
td:hover{
	background-color: white;
	color: #999999;
}
.title{
	background-color: white;
	color:black;
	text-align: center;
}
input{
	width: 80%;
	margin: 0 auto;
	border: none;
	margin-left: 10%;
	margin-bottom: 1%;
}
input[type="radio" i]{
	width: 1%;
}
input[type="text" i]{
	height: 30px;
	color: white;
	background-color: gray;
}
::-webkit-input-placeholder { color: white; }
input[type="submit" i]{
	color: white;
	background-color: #999999;
	border: 1px solid gray;
}

</style>
<%
MyDb md=new MyDb();

%>
</head>
<body>
<div class="title">
<h1>사원 및 부서조회</h1></div>

<div class="content">
	<table><tr>
	<td onclick="location.href='selectPerson.jsp'">사원조회</td>
	<td onclick="location.href='selectB.jsp'">부서조회</td>
	</tr>
	</table>
	
	<form>
	<input type="text" name="last_name" placeholder="성"><br>
	<input type="text" name="first_name" placeholder="이름"><br>
	<input type="text" name="position" placeholder="직책"><br>
	<input type="text" name="Salary" placeholder="연봉"><br>
	<input type="radio" name="uo" id="uo" value="up">
	<label for="uo">이상</label>
	<input type="radio" name="uo" id="ud" value="down">
	<label for="ud">이하</label><br>
	<input type="submit" value="조회">
	</form>
	<hr>
</div>
</body>
</html>