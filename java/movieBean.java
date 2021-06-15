package model;

public class movieBean {
	private String movie_id; //영화아이디(고유값)
	private String movie_name; //영화제목
	private String movie_class; //등급
	private String movie_genre; //장르
	private String movie_url; //영화포스터url
	private int movie_audience; //관객수
	
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_class() {
		return movie_class;
	}
	public void setMovie_class(String movie_class) {
		this.movie_class = movie_class;
	}
	public String getMovie_genre() {
		return movie_genre;
	}
	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}
	public String getMovie_url() {
		return movie_url;
	}
	public void setMovie_url(String movie_url) {
		this.movie_url = movie_url;
	}
	public int getMovie_audience() {
		return movie_audience;
	}
	public void setMovie_audience(int movie_audience) {
		this.movie_audience = movie_audience;
	}	
}
