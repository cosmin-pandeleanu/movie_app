import 'package:curs_flutter/src/actions/get_movies.dart';
import 'package:curs_flutter/src/containers/home_page_container.dart';
import 'package:curs_flutter/src/containers/movies_container.dart';
import 'package:curs_flutter/src/models/app_state.dart';
import 'package:curs_flutter/src/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Movies ${state.pageNumber}')),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(GetMovies());
                },
              )
            ],
          ),
          body: MoviesContainer(
            builder: (BuildContext context, List<Movie> movies) {
              if (state.isLoading && movies.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = movies[index];
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
      },
    );
  }
}
