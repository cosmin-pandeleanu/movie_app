import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/data/auth_base_api.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpic {
  AuthEpic(this._authApi);

  final AuthApiBase _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, UpdateFavoriteStart>(_updateFavoriteStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetUserStart>(_getUserStart),
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>($Login.successful)
          .onErrorReturnWith($Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>($GetCurrentUser.successful)
          .onErrorReturnWith($GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map<CreateUser>($CreateUser.successful)
          .onErrorReturnWith($CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _updateFavoriteStart(Stream<UpdateFavoriteStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateFavoriteStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.updateFavorites(store.state.user!.uid, action.id, add: action.add))
          .mapTo(const UpdateFavorite.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) {
        return UpdateFavorite.error(error, stackTrace, action.id, add: action.add);
      });
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logout())
          .mapTo(const Logout.successful())
          .onErrorReturnWith($Logout.error);
    });
  }

  Stream<AppAction> _getUserStart(Stream<GetUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getUser(action.uid))
          .map<GetUser>($GetUser.successful)
          .onErrorReturnWith($GetUser.error);
    });
  }
}
