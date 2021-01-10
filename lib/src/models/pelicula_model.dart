class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();


  Peliculas.fromJsonlist( List<dynamic> jsonList ){

    if ( jsonList == null ) return;


    for ( var item in jsonList ){
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add( pelicula );
    }



  }

}


class Pelicula {
  bool adult;
  String backdropPath;
  int budget;
  String homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  int revenue;
  int runtime;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Pelicula({
    this.adult,
    this.backdropPath,
    this.budget,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Pelicula.fromJsonMap( Map<String, dynamic> json ){
    backdropPath      = json['backdrop_path'];
    adult             = json['adult'];
    budget            = json['budget'];
    homepage          = json['homepage'];
    id                = json['id'];
    imdbId            = json['imdb_id'];
    originalLanguage  = json['original_language'];
    originalTitle     = json['original_title'];
    overview          = json['overview'];
    popularity        = json['popularity'] / 1;
    posterPath        = json['poster_path'];
    releaseDate       = json['release_date'];
    revenue           = json['revenue'];
    runtime           = json['runtime'];
    status            = json['status'];
    tagline           = json['tagline'];
    title             = json['title'];
    video             = json['video'];
    voteAverage       = json['vote_average'] / 1;
    voteCount         = json['vote_count'];
  }


}

