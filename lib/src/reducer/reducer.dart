import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:curs_flutter/src/reducer/auth_reducer.dart';
import 'package:curs_flutter/src/reducer/movie_reducer.dart';
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
  authReducer,
  movieReducer,
  TypedReducer<AppState, ActionStart>(_actionStart),
  TypedReducer<AppState, ActionDone>(_actionDone),
]);

AppState _actionStart(AppState state, ActionStart action) {
  return state.copyWith(pending: <String>{...state.pending, action.pendingId});
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.copyWith(pending: <String>{...state.pending}..remove(action.pendingId));
}
