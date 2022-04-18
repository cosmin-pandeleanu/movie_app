import 'package:curs_flutter/src/actions/get_movies.dart';
import 'package:curs_flutter/src/models/app_state.dart';
import 'package:curs_flutter/src/models/movie.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  if (kDebugMode) {
    print(action);
  }
  final AppState newState = _reducer(state, action);
  if (kDebugMode) {
    print(newState);
  }
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
]);

AppState _getMovies(AppState state, GetMovies action) {
  return state.copyWith(isLoading: true);
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.copyWith(
      isLoading: false,
      pageNumber: state.pageNumber + 1,
      movies: <Movie>[...state.movies, ...action.movies],
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.copyWith(isLoading: false);
}
