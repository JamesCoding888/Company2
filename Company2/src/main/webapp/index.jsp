<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"></jsp:include>		
		<tr>
			<td height=400 align=center>
			<table width=400 align=center border=0>
				<tr>
					<td align=center><a href="addPorder.jsp">1)新增訂單</a>
				<tr>
					<td align=center><a href="addPorder.jsp">1)查詢訂單</a>
				<tr>
					<td align=center><a href="addPorder.jsp">1)修改訂單</a>
				<tr>
					<td align=center><a href="addPorder.jsp">1)刪除訂單</a>															
			</table>	
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"></jsp:include>
	</table>
	
</body>
</html>