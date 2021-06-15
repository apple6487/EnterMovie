package dto;

import java.io.Serializable;

public class Movie implements Serializable{
	private static final long serialVersionUID = -4274700572068677000L;
	
	private String movie_name; //영화제목
	private String movie_id; //영화ID
	private String movie_class; //영화등급
	private String movie_genre; //영화장르
	private Integer movie_audience; //관객수
	private String movie_url; //영화포스터url
	private String movie_story; //영화스토리
	private int quantity; 
	
	public Movie() {
		super();
	}
	public Movie(String movie_id, String movie_name, String movie_genre) {
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.movie_genre = movie_genre;
	}
	
	
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
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
	public Integer getMovie_audience() {
		return movie_audience;
	}
	public void setMovie_audience(Integer movie_audience) {
		this.movie_audience = movie_audience;
	}
	public String getMovie_url() {
		return movie_url;
	}
	public void setMovie_url(String movie_url) {
		this.movie_url = movie_url;
	}
	public String getMovie_story() {
		return movie_story;
	}
	public void setMovie_story(String movie_story) {
		this.movie_story = movie_story;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
