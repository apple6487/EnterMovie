<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="model.BoardDAO"%>
<%@ page import="model.BoardDTO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>process_freeBoard_update.jsp</title>
</head>
<body>
	<%
		String userID = null;

		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		if (userID == null) {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해 주세요.')");
			script.println("location.href='LOGIN.jsp'");
			script.println("</script>");

		}
		int board_num = 0;
		
		if(request.getParameter("board_num") != null) {
			board_num = Integer.parseInt(request.getParameter("board_num"));
		}

		if (board_num == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='Freeboard_main.jsp'");
			script.println("</script>");
		}

		BoardDTO boardDTO = new BoardDAO().getBoardDTO(board_num);
		
		if(!userID.equals(boardDTO.getCust_id())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href='Freeboard_main.jsp'");
			script.println("</script>");
			
		} else {

			if (request.getParameter("board_title") == null || request.getParameter("board_content") == null
				|| request.getParameter("board_title").equals("") || request.getParameter("board_content").equals("")) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");

			} else {

				BoardDAO boardDAO = new BoardDAO();

				int result = boardDAO.update(board_num, request.getParameter("board_title"), request.getParameter("board_content"));

				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 수정에 실패했습니다.')");
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
