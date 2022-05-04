import 'package:curs_flutter/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment.dart';
part 'create_user.dart';
part 'listen_for_comments.dart';
part 'get_current_user.dart';
part 'get_movies.dart';
part 'get_user.dart';
part 'index.freezed.dart';
part 'login.dart';
part 'logout.dart';
part 'set.dart';
part 'update_favorites.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
  StackTrace get stackTrace;
}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

abstract class PendingAction {
  String get pendingId;
}

abstract class ActionStart implements PendingAction {}

abstract class ActionDone implements PendingAction {}

typedef ActionResult = void Function(AppAction action);
