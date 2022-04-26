import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> movieReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
]);


AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.copyWith(
    pageNumber: state.pageNumber + 1,
    movies: <Movie>[...state.movies, ...action.movies],
  );
}
