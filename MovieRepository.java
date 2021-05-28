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
		Movie movie1 = new Movie("M001", "�ż���", "���͸�");
		movie1.setMovie_audience(4689161);
		movie1.setMovie_class("û�ҳ� ���� �Ұ�");
		movie1.setMovie_url("M001.jpg");
		movie1.setMovie_story("2013�⿡ ������ ���ѹα��� ������ ���͸� ��ȭ. ������, �ֹν�, Ȳ����, �ڼ����� �ֿ��� �þ�����, �δ�ŷ��� �Ǹ��� ���Ҵ��� �ó�����(����)�� ����ϸ鼭 �湫���� ��Ÿ �۰��� ������ �������� ��ȭ ���� ���� �ι�°�� �ް����� ���� ��ǰ�̴�. �糪����ó���� â����.");
		
		Movie movie2 = new Movie("M002", "����", "������");
		movie2.setMovie_audience(13019740);
		movie2.setMovie_class("12�� �̻� ������");
		movie2.setMovie_url("M002.jpg");
		movie2.setMovie_story("��������(��ڪ)�� 2006�� 7�� 27�Ͽ� ������ ����ȣ ������ ��ȹ�������� ��ȭ�̴�. 2000�⿡ �߻��� ���ѹ̱� �Ѱ� ���ع� ���� ��� ����� ��Ƽ��� �Ͽ�, �ҽùε��� �Ŵ��� ������ ����ģ�ٴ� ������ īŸ���ý��� �����ϱ� ����, ��� ������ ���Ѻ� �� �ִ� ��Ϲ����� ���� ��ȭ�� ������ ��Ҵٰ� �Ѵ�.");
		
		Movie movie3 = new Movie("M003", "�ܿ�ձ�2", "�ִϸ��̼�");
		movie3.setMovie_audience(13747792);
		movie3.setMovie_class("��ü������");
		movie3.setMovie_url("M003.jpg");
		movie3.setMovie_story("�ܿ�ձ� 2(Frozen II)�� 2019�� �̱� ��Ʈ ����� �ִϸ��̼� ��Ʃ������� ������ 3D ��ǻ�� �ִϸ��̼� ������ ��Ÿ�� ��ȭ�� ������ ���� ����� ã�� �Ʒ����� ����κ��� ���ϱ� ���� ����� �ȳ��� ������ ã���� ������ ������ ������ ������ �̾߱⸦ �׸���.");
		
		listOfMovies.add(movie1);
		listOfMovies.add(movie2);
		listOfMovies.add(movie3);
	}
	
	//��ȭ��� �������� �޼ҵ�
	public ArrayList<Movie> getAllMovies(){
		return listOfMovies;
	}
	
	//��ȭ �� ������ �������� �޼ҵ�
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
