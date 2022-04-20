import 'package:curs_flutter/src/actions/create_user.dart';
import 'package:curs_flutter/src/actions/get_current_user.dart';
import 'package:curs_flutter/src/actions/get_movies.dart';
import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/actions/login.dart';
import 'package:curs_flutter/src/models/app_state.dart';
import 'package:curs_flutter/src/models/movie.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction.');
  }

  if (action is ErrorAction) {}

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
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful),
  TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful),
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

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}
