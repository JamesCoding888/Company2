<%@page import="Model.porder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.porderDao" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String desk = request.getParameter("desk");
	String A = request.getParameter("A");
	String B = request.getParameter("B");
	String C = request.getParameter("C");
	if(id!=null && id!=""   && 
	 desk!=null && desk!="" && 
	 A!=null    && A!=""    && 
	 B!=null    && B!=""    && 
	 C!=null    && C!="")
	{
		int i = Integer.parseInt(id);
		porder p = new porderDao().queryId(i);
		
		int a = Integer.parseInt(A);
		int b = Integer.parseInt(B);
		int c = Integer.parseInt(C);
		
		p.setDesk(desk);
		p.setA(a);
		p.setB(b);
		p.setC(c);
		
		new porderDao().update(p);
		
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
					<h3 align=center>修改訂單資料</h3>
					<form action="update.jsp" method="post">
					id:<input type="text" name="id" size=5>
						桌號:<select name="desk">
							<option value="A桌">A桌
							<option value="B桌">B桌
							<option value="C桌">C桌
							<option value="D桌">D桌
							<option value="E桌">E桌
						</select>
						A餐:<input type="text" name="A" size="5">
						B餐:<input type="text" name="B" size="5">
						C餐:<input type="text" name="C" size="5">
						<input type="submit" value="確定">			
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