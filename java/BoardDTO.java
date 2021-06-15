package model;

public class BoardDTO {
	
	private int board_num; //순번
	private String cust_id; //등록자 아이디
	private String board_title; //제목
	private String board_content; //내용
	private String board_time; //등록일자
	private int board_availble; //게시판 글 카운트 (지워진 글인지 아닌지 확인)
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_time() {
		return board_time;
	}
	public void setBoard_time(String board_time) {
		this.board_time = board_time;
	}
	public int getBoard_availble() {
		return board_availble;
	}
	public void setBoard_availble(int board_availble) {
		this.board_availble = board_availble;
	}
	
	
	
}
