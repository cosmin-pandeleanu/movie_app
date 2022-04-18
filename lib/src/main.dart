import 'package:curs_flutter/src/actions/get_movies.dart';
import 'package:curs_flutter/src/data/movie_api.dart';
import 'package:curs_flutter/src/epics/app_epic.dart';
import 'package:curs_flutter/src/models/app_state.dart';
import 'package:curs_flutter/src/presentation/home_page.dart';
import 'package:curs_flutter/src/reducer/reducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client _client = Client();
  final MovieApi _movieApi = MovieApi(_client);
  final AppEpic epic = AppEpic(_movieApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()),
    ],
  )..dispatch(GetMovies());

  runApp(MovieApp(store: store));
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
