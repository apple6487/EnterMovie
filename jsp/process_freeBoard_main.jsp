<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>process_freeBoard_main.jsp</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String sql = "select * from free_board";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
	%>
	<table border="1">
		<tr>
			<td>글 번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<%
			while(rs.next()) {
		%>
		<tr>
			<td><%= rs.getInt("board_num") %></td>
			<td><%= rs.getString("board_title") %></td>
			<td><%= rs.getString("cust_id") %></td>
			<td><%= rs.getString("board_time") %></td>
			<td><%= rs.getString("readcount") %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
