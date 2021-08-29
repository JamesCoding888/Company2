<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Model.porder" %>
<%
	porder p = (porder)session.getAttribute("P");
%>
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
			<td height=400>
			<table width=500 align=center border=0>
				<tr>
					<td colspan=2 align=center>
					<h3>訂票完成，這是你的定單細目</h3>
					<tr>
						<td colspan=2>
						<hr>
					<tr>
						<td width=100 align=center>桌號
						<td><%=p.getDesk() %>
					<tr>
						<td width=100 align=center>A
						<td><%=p.getA() %>
					<tr>
						<td width=100 align=center>B
						<td><%=p.getB() %>
					<tr>
						<td width=100 align=center>C
						<td><%=p.getC() %>
					<tr>
						<td width=100 align=center>金額
						<td><%=p.getSum() %>
					<tr>
						<td colspan=2>
						<hr>	
					<tr>
						<td colspan=2 align=center>
						<a href="index.jsp">首頁</a>										
			</table>	
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"></jsp:include>
</body>
</html>