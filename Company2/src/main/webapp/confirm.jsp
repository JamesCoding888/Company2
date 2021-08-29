<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.porder" %>
<%
	request.setCharacterEncoding("UTF-8");
	String Desk = request.getParameter("desk");
	int A = Integer.parseInt(request.getParameter("A"));
	int B = Integer.parseInt(request.getParameter("B"));
	int C = Integer.parseInt(request.getParameter("C"));
	
	porder p = new porder(Desk, A, B, C);
	session.setAttribute("P", p);

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
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400>
				<table width=500 align=center border=0>
					<tr>
						<td colspan=2 align=center>
						<h3>這是你的訂單細目</h3>
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
						<a href="addOrderController">確定</a>
						<a href="addPorder.jsp">上一頁</a>
				</table>
			
			

	
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>


	
</body>
</html>