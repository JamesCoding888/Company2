<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>菜單</title>
</head>
<body>
	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400>
			
				<form action="confirm.jsp" method="post">
						<table width=610 align=center border=0>
							<tr>
								<td colspan=3>
								桌號:
								<select name="desk">
									<option value="A號桌">A桌
									<option value="B號桌">B桌
									<option value="C號桌">C桌
									<option value="D號桌">D桌
									<option value="E號桌">E桌
									
								</select>
							<tr>
								<td colspan=3>
								<hr>
								
							<tr>
								<td>
									<img alt="A餐" src="pic/1.jpg"><br>
									<select name="A">
										<option value="0">0
										<option value="1">1
										<option value="2">2
										<option value="3">3
										<option value="4">4
										<option value="5">5
										<option value="6">6
										<option value="7">7
										<option value="8">8
										<option value="9">9
									</select>								
								<td>
									<img alt="B餐" src="pic/2.jpg"><br>
									<select name="B">
										<option value="0">0
										<option value="1">1
										<option value="2">2
										<option value="3">3
										<option value="4">4
										<option value="5">5
										<option value="6">6
										<option value="7">7
										<option value="8">8
										<option value="9">9
									</select>	
								<td>
									<img alt="C餐" src="pic/3.jpg"><br>
									<select name="C">
										<option value="0">0
										<option value="1">1
										<option value="2">2
										<option value="3">3
										<option value="4">4
										<option value="5">5
										<option value="6">6
										<option value="7">7
										<option value="8">8
										<option value="9">9
									</select>	
							<tr>
								<td colspan=3>
								<hr>
							<tr>
								<td colspan=3 align=center>
								<input type="submit" value="訂購">
								
						</table>	
				</form>
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table> 
	
</body>
</html>