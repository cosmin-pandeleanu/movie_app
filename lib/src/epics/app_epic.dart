import 'package:curs_flutter/src/actions/create_user.dart';
import 'package:curs_flutter/src/actions/get_current_user.dart';
import 'package:curs_flutter/src/actions/get_movies.dart';
import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/actions/login.dart';
import 'package:curs_flutter/src/data/auth_api.dart';
import 'package:curs_flutter/src/data/movie_api.dart';
import 'package:curs_flutter/src/models/app_state.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpic {
  AppEpic(this._movieApi, this._authApi);

  final MovieApi _movieApi;
  final AuthApi _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetMoviesStart>(_getMovies),
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
    ]);
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetMoviesStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _movieApi.getMovies(store.state.pageNumber))
          .map<GetMovies>(GetMovies.successful)
          .onErrorReturnWith(GetMovies.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>(Login.successful)
          .onErrorReturnWith(Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map(GetCurrentUser.successful)
          .onErrorReturnWith(GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map(CreateUser.successful)
          .onErrorReturnWith(CreateUser.error)
          .doOnData(action.onResult);
    });
  }
}
