import 'package:curs_flutter/src/models/movie.dart';

class GetMovies{
  GetMovies();

  @override
  String toString() {
    return 'GetMovies()';
  }
}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movies);

  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMoviesSuccessful{movies: $movies}';
  }
}

class GetMoviesError {
  GetMoviesError(this.error);

  final Object error;

  @override
  String toString() {
    return 'GetMoviesError{error: $error}';
  }
}
