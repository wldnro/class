<!DOCTYPE html>
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
	color: black;
}
.title{
	background-color: white;
	color:black;
	text-align: center;
}
</style>
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
</div>
</body>
</html>