package model;

import java.sql.*;
import java.util.ArrayList;

import model.BoardDTO;

//DB ���� ��ü
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
	
	//�Խ��� �� �ۼ��� ���� ������ �ð� �������� �Լ�, �Խ��� �� �ۼ� �� ���� ������ �ð� ǥ��
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
		return ""; //������ ���̽� ����
	}
	
	public int getNext() { //�Խñ� ��ȣ ����
		String sql = "select board_num from free_board order by board_num desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //ù��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ������ ���
	}
	
	public int write(String board_title, String cust_id, String board_content) { //���� �� �ۼ� �Լ�
		String sql = "insert into free_board values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext()); //�Խù� ��ȣ�� getNext() ���
			pstmt.setString(2, cust_id);
			pstmt.setString(3, board_title);
			pstmt.setString(4, board_content);
			pstmt.setString(5, getDate());
			pstmt.setInt(6, 1); //�����Ǿ����� �ƴ��� Ȯ��
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //������ ���̽� ����
	}
	
	//�� ���â �ҷ����� �Լ�
	public ArrayList<BoardDTO> getList(int pageNumber) {
		String sql = "select * from free_board where board_num < ? and board_available = 1 order by board_num desc limit 10";
		//�ν��Ͻ��� �����ϴ� ����Ʈ �ϳ� ����
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//�� ��� ����
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10); //6���� ���� �͸� 
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
	
	//10���ۿ� ���ٸ� ���� �������� ���� �� �˷��ִ� �Լ�(������ ó��)
	public boolean nextPage(int pageNumber) {
		String sql = "select * from free_board where board_num < ? and board_available = 1";
		//DTO Ŭ�������� ������ �ν��Ͻ��� �����ϴ� ����Ʈ
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//�� ��� ����
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			
			//����� �ϳ��� �����ϸ� ������������ �Ѿ �� �ִٰ� �˷���
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false; //�ƴϸ� false
	}
	
	//�� ������ �ҷ����� �Լ�
	public BoardDTO getBoardDTO(int board_num) {
		//Ư�� �Խñ� ��ȣ�� ��� ������ �������� ������
		String sql = "select * from free_board where board_num = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//�ۿ� ���� ������ ���� ��ü ����
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
		//������ ������ null�� ��ȯ
		return null;
	}
	
	//�� �����ϴ� �Լ�
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
		
		return -1; //������ ���̽� ����
	}
	
	//available�� 0���� ���������ν� ȭ�鿡 ǥ�õ��� �ʰ� ��
	public int delete(int board_num) {
		String sql = "update free_board set board_available = 0 where board_num = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; //������ ���̽� ���� 
	}
}

