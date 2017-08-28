package dao;

import javafx.beans.property.SimpleStringProperty;

public class Movie {

	private final SimpleStringProperty id;
	private final SimpleStringProperty title;
    private final SimpleStringProperty genre;
    private final SimpleStringProperty description;
    private final SimpleStringProperty release_year;
    private final SimpleStringProperty language;
    private final SimpleStringProperty imdb_rating;
    private final SimpleStringProperty duration_minutes;
    private final SimpleStringProperty main_actors;
    private final SimpleStringProperty availbale;
    private final SimpleStringProperty last_rental_id;
    private final SimpleStringProperty last_rental_date;

    public Movie(String id, String title, String genre, String description, String release_year, String language, String imdb_rating, String duration_minutes, String main_actors, String availbale, String last_rental_id, String last_rental_date) {
    	this.id = new SimpleStringProperty(id);
    	this.title = new SimpleStringProperty(title);
        this.genre = new SimpleStringProperty(genre);
        this.description = new SimpleStringProperty(description);
        this.release_year = new SimpleStringProperty(release_year);
        this.language = new SimpleStringProperty(language);
        this.imdb_rating = new SimpleStringProperty(imdb_rating);
        this.duration_minutes = new SimpleStringProperty(duration_minutes);
        this.main_actors = new SimpleStringProperty(main_actors);
        this.availbale = new SimpleStringProperty(availbale);
        this.last_rental_id = new SimpleStringProperty(last_rental_id);
        this.last_rental_date = new SimpleStringProperty(last_rental_date);
    }
    
    public String getId() {
        return id.get();
    }

    public void setId(String fId) {
        id.set(fId);
    }
    
    public String getTitle() {
        return title.get();
    }

    public void setTitle(String fTitle) {
        title.set(fTitle);
    }

    public String getGenre() {
        return genre.get();
    }

    public void setGenre(String fGenre) {
        genre.set(fGenre);
    }

    public String getDescription() {
        return description.get();
    }

    public void setDescription(String fDescription) {
        description.set(fDescription);
    }
    
    public String getRelease_year() {
        return release_year.get();
    }

    public void setRelease_year(String fRelease_year) {
    	release_year.set(fRelease_year);
    }
    
    public String getLanguage() {
        return language.get();
    }

    public void setLanguage(String fLanguage) {
    	language.set(fLanguage);
    }
    
    public String getImdb_rating() {
        return imdb_rating.get();
    }

    public void setImdb_rating(String fImdb_rating) {
    	imdb_rating.set(fImdb_rating);
    }
    
    public String getDuration_minutes() {
        return duration_minutes.get();
    }

    public void setDuration_minutes(String fDuration_minutes) {
    	duration_minutes.set(fDuration_minutes);
    }
    
    public String getMain_actors() {
        return main_actors.get();
    }

    public void setMain_actors(String fMain_actors) {
    	main_actors.set(fMain_actors);
    }
    
    public String getAvailbale() {
        return availbale.get();
    }

    public void setAvailbale(String fAvailbale) {
        availbale.set(fAvailbale);
    }
    
    public String getLast_rental_id() {
        return last_rental_id.get();
    }

    public void setLast_rental_id(String fLast_rental_id) {
        last_rental_id.set(fLast_rental_id);
    }
    
    public String getLast_rental_date() {
        return last_rental_date.get();
    }

    public void setLast_rental_date(String fLast_rental_date) {
    	last_rental_date.set(fLast_rental_date);
    }


}
