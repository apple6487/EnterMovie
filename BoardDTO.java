package model;

public class BoardDTO {
	
	private int board_num; //����
	private String cust_id; //����� ���̵�
	private String board_title; //����
	private String board_content; //����
	private String board_time; //�������
	private int board_availble; //�Խ��� �� ī��Ʈ (������ ������ �ƴ��� Ȯ��)
	
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
