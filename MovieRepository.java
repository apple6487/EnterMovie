package dao;

import java.util.ArrayList;
import dto.Movie;

public class MovieRepository {
	private ArrayList<Movie> listOfMovies = new ArrayList<Movie>();
	private static MovieRepository instance = new MovieRepository();
	
	public static MovieRepository getInstance() {
		return instance;
	}
	
	public void addMovie(Movie movie) {
		listOfMovies.add(movie);
	}
	
	public MovieRepository() {
		Movie movie1 = new Movie("M001", "신세계", "느와르");
		movie1.setMovie_audience(4689161);
		movie1.setMovie_class("청소년 관람 불가");
		movie1.setMovie_url("M001.jpg");
		movie1.setMovie_story("2013년에 개봉한 대한민국의 갱스터 느와르 영화. 이정재, 최민식, 황정민, 박성웅이 주연을 맡았으며, 부당거래와 악마를 보았다의 시나리오(각본)를 담당하면서 충무로의 스타 작가로 떠오른 박훈정이 영화 혈투 이후 두번째로 메가폰을 잡은 작품이다. 사나이픽처스의 창립작.");
		
		Movie movie2 = new Movie("M002", "괴물", "스릴러");
		movie2.setMovie_audience(13019740);
		movie2.setMovie_class("12세 이상 관람가");
		movie2.setMovie_url("M002.jpg");
		movie2.setMovie_story("《괴물》(怪物)은 2006년 7월 27일에 개봉한 봉준호 감독이 기획·제작한 영화이다. 2000년에 발생한 주한미군 한강 독극물 무단 방류 사건을 모티브로 하여, 소시민들이 거대한 괴물을 물리친다는 통쾌한 카타르시스를 전달하기 위해, 모든 계층이 지켜볼 수 있는 블록버스터 괴수 영화로 방향을 잡았다고 한다.");
		
		Movie movie3 = new Movie("M003", "겨울왕국2", "애니메이션");
		movie3.setMovie_audience(13747792);
		movie3.setMovie_class("전체관람가");
		movie3.setMovie_url("M003.jpg");
		movie3.setMovie_story("겨울왕국 2(Frozen II)는 2019년 미국 월트 디즈니 애니메이션 스튜디오에서 제작한 3D 컴퓨터 애니메이션 뮤지컬 판타지 영화로 엘사의 힘의 기원을 찾고 아렌델을 위기로부터 구하기 위해 엘사와 안나가 진실을 찾으러 마법의 숲으로 모험을 떠나는 이야기를 그린다.");
		
		listOfMovies.add(movie1);
		listOfMovies.add(movie2);
		listOfMovies.add(movie3);
	}
	
	//영화목록 가져오는 메소드
	public ArrayList<Movie> getAllMovies(){
		return listOfMovies;
	}
	
	//영화 상세 정보를 가져오는 메소드
	public Movie getMovieById(String movie_id) {
		Movie movieById = null;
		for (int i=0; i<listOfMovies.size(); i++) {
			Movie movie = listOfMovies.get(i);
			if(movie != null && movie.getMovie_id() != null && movie.getMovie_id().equals(movie_id)) {
				movieById = movie;
				break;
			}
		}
		return movieById;
	}
}
