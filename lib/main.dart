import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Movie> _movies = <Movie>[];
  bool _isLoading = true;
  int _pageNumber = 1;

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    setState(() => _isLoading = true);

    final Response response = await get(Uri.parse('https://yts.mx/api/v2/list_movies.json?quality=3D&page=$_pageNumber'));
    final Map<dynamic, dynamic> result = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> movies = result['data']['movies'] as List<dynamic>;

    final List<Movie> data = <Movie>[];

    for (int i = 0; i < movies.length; i++) {
      final Map<String, dynamic> item = movies[i] as Map<String, dynamic>;
      data.add(Movie.fromJson(item));
    }

    setState(() {
      _movies.addAll(data);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Movies $_pageNumber')),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _pageNumber++;
              _getMovies();
            },
          )
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          if(_isLoading && _movies.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: _movies.length,
            itemBuilder: (BuildContext context, int index) {
              final Movie movie = _movies[index];
              return Column(
                children: <Widget>[
                  Image.network(movie.poster),
                  Text(movie.title),
                  Text('${movie.year}'),
                  Text(movie.genres.join(', ')),
                  Text('${movie.rating}')
                ],
              );
            },
          );
        },
      ),
    );
  }
}


class Movie {
  Movie({
    required this.title,
    required this.year,
    required this.rating,
    required this.genres,
    required this.poster,
  });

  Movie.fromJson(Map<String, dynamic> item)
      :
        title = item['title'] as String,
        year = item['year'] as int,
        rating = (item['rating'] as num).toDouble(),
        genres = List<String>.from(item['genres'] as List<dynamic>),
        poster = item['medium_cover_image'] as String;

  final String title;
  final int year;
  final double rating;
  final List<String> genres;
  final String poster;

  @override
  String toString() {
    return 'Movie(title: $title, year: $year, rating: $rating, genres: $genres, poster: $poster)';
  }
}
