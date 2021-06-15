<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="model.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="boardDTO" class="model.BoardDTO" scope="page"/>
<jsp:setProperty property="board_title" name="boardDTO" />
<jsp:setProperty property="board_content" name="boardDTO"/>
<!DOCTYPE html>
<html>
<head>
<title>process_freeBoard_write.jsp</title>
</head>
<body>
	<%
		String userID = null;
	
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
		if(userID == null) {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해 주세요.')");
			script.println("location.href='LOGIN.jsp'");
			script.println("</script>");
			
		} else {
			
			if(boardDTO.getBoard_title() == null || boardDTO.getBoard_content() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
				
			} else {
				
				BoardDAO boardDAO = new BoardDAO();
				
				int result = boardDAO.write(boardDTO.getBoard_title(), userID, boardDTO.getBoard_content());
				
				if(result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href='Freeboard_main.jsp'");
					script.println("</script>");
				}
			}
		}
	%>
</body>
</html>
