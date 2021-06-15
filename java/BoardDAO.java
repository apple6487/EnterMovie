package model;

import java.sql.*;
import java.util.ArrayList;

import model.BoardDTO;

//DB 접근 객체
public class BoardDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			
			String url = "jdbc:mysql://localhost:3306/EntermovieDB"; 
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//게시판 글 작성을 위해 현재의 시간 가져오는 함수, 게시판 글 작성 시 현재 서버의 시간 표시
	public String getDate() {
		
		String sql = "select NOW()";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터 베이스 오류
	}
	
	public int getNext() { //게시글 번호 증가
		String sql = "select board_num from free_board order by board_num desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류인 경우
	}
	
	public int write(String board_title, String cust_id, String board_content) { //실제 글 작성 함수
		String sql = "insert into free_board values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext()); //게시물 번호라 getNext() 사용
			pstmt.setString(2, cust_id);
			pstmt.setString(3, board_title);
			pstmt.setString(4, board_content);
			pstmt.setString(5, getDate());
			pstmt.setInt(6, 1); //삭제되었는지 아닌지 확인
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터 베이스 오류
	}
	
	//글 목록창 불러오는 함수
	public ArrayList<BoardDTO> getList(int pageNumber) {
		String sql = "select * from free_board where board_num < ? and board_available = 1 order by board_num desc limit 10";
		//인스턴스를 보관하는 리스트 하나 만듦
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//글 출력 개수
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10); //6보다 작은 것만 
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO boardDTO = new BoardDTO();
				
				boardDTO.setBoard_num(rs.getInt(1));
				boardDTO.setCust_id(rs.getString(2));
				boardDTO.setBoard_title(rs.getString(3));
				boardDTO.setBoard_content(rs.getString(4));
				boardDTO.setBoard_time(rs.getString(5));
				boardDTO.setBoard_availble(rs.getInt(6));
				
				list.add(boardDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//10개밖에 없다면 다음 페이지가 없는 걸 알려주는 함수(페이지 처리)
	public boolean nextPage(int pageNumber) {
		String sql = "select * from free_board where board_num < ? and board_available = 1";
		//DTO 클래스에서 나오는 인스턴스를 보관하는 리스트
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//글 출력 개수
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			
			//결과가 하나라도 존재하면 다음페이지로 넘어갈 수 있다고 알려줌
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false; //아니면 false
	}
	
	//글 내용을 불러오는 함수
	public BoardDTO getBoardDTO(int board_num) {
		//특정 게시글 번호에 모든 정보를 가져오는 쿼리문
		String sql = "select * from free_board where board_num = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//글에 대한 정보를 담을 객체 생성
				BoardDTO boardDTO = new BoardDTO();
				
				boardDTO.setBoard_num(rs.getInt(1));
				boardDTO.setCust_id(rs.getString(2));
				boardDTO.setBoard_title(rs.getString(3));
				boardDTO.setBoard_content(rs.getString(4));
				boardDTO.setBoard_time(rs.getString(5));
				boardDTO.setBoard_availble(rs.getInt(6));
				
				return boardDTO;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//정보가 없으면 null값 반환
		return null;
	}
	
	//글 수정하는 함수
	public int update(int board_num, String board_title, String board_content) {
		String sql = "update free_board set board_title = ?, board_content = ? where board_num = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board_title);
			pstmt.setString(2, board_content);
			pstmt.setInt(3, board_num);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; //데이터 베이스 오류
	}
	
	//available을 0으로 변경함으로써 화면에 표시되지 않게 함
	public int delete(int board_num) {
		String sql = "update free_board set board_available = 0 where board_num = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; //데이터 베이스 오류 
	}
}

