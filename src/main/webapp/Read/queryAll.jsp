<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.porderDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="../title.jsp"></jsp:include>		
		<tr>
			<td height=400 align=center valign="top">
				<table width=600 align=center boarder=1>
					<tr>
						<td colspan=6 align=center>
							<h3>所有訂單資料</h3>
					<tr>
						<td colspan=6>
						<hr>
					
					<tr>
						<td width=100>ID
						<td width=100>桌號
						<td width=100>A
						<td width=100>B
						<td width=100>C
						<td width=100>sum					
					<tr>
						<td colspan=6>
						<hr>
					
					<tr>
						<td colspan=6>
							<!--  全部內容  --> <%=new porderDao().queryAll()%>
					
					<tr>
						<td colspan=6>
							<hr>
					<tr>
						<td colspan=6 align=center>
						<a href="query.jsp">上一頁</a>
				
				</table>
				
		<tr>
			<td height=100 align=center><jsp:include page="../end.jsp"></jsp:include>
	</table>
	
	
</body>
</html>