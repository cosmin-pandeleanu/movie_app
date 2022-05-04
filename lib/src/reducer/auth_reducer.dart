import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, UserAction>(_userAction),
  TypedReducer<AppState, UpdateFavoriteStart>(_userFavoriteStart),
  TypedReducer<AppState, UpdateFavoriteError>(_userFavoriteError),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, GetUserSuccessful>(_getUserSuccessful),
]);

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _userFavoriteStart(AppState state, UpdateFavoriteStart action) {
  final List<int> favoriteMovies = <int>[...state.user!.favoriteMovies];
  if (action.add) {
    favoriteMovies.add(action.id);
  } else {
    favoriteMovies.remove(action.id);
  }
  final AppUser user = state.user!.copyWith(favoriteMovies: favoriteMovies);
  return state.copyWith(user: user);
}

AppState _userFavoriteError(AppState state, UpdateFavoriteError action) {
  final List<int> favoriteMovies = <int>[...state.user!.favoriteMovies];
  if (action.add) {
    favoriteMovies.remove(action.id);
  } else {
    favoriteMovies.add(action.id);
  }
  final AppUser user = state.user!.copyWith(favoriteMovies: favoriteMovies);
  return state.copyWith(user: user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _getUserSuccessful(AppState state, GetUserSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      action.user.uid: action.user,
    },
  );
}
