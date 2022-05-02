import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> movieReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, OnCommentsEvent>(_onCommentsEvent),
  TypedReducer<AppState, SetSelectedMovieId>(_setSelectedMovieId),
]);

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.copyWith(
    pageNumber: state.pageNumber + 1,
    movies: <Movie>[...state.movies, ...action.movies],
  );
}

AppState _onCommentsEvent(AppState state, OnCommentsEvent action) {
  return state.copyWith(comments: <Comment>{...state.comments, ...action.comments}.toList());
}

AppState _setSelectedMovieId(AppState state, SetSelectedMovieId action) {
  return state.copyWith(selectedMovieId: action.movieId);
}
