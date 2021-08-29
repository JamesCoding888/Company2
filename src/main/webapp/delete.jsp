<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.porderDao" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	if(id!=null && id!=""){
		int i = Integer.parseInt(id);
		new porderDao().delete(i);
	}
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
			<td height=400 align=center>
				<table width=600 align=center boarder=0>
					<td colspan=6 align=center>
					<h3>刪除訂單資料</h3>
				<form action="delete.jsp" method="post">
					id:<input type="text" name="id" size=5>
					<input type="submit" value="確定"	>	
				</form>
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
						<td colspan=6><!-- 全部內容 -->
						<hr>	
				<tr>
						<td colspan=6>
						<%=new porderDao().queryAll() %>
				<tr>
						<td colspan=6 align=center>
						<a href="index.jsp" align=center>首頁</a>
				</table>										
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"></jsp:include>
	</table>
</body>
</html>
