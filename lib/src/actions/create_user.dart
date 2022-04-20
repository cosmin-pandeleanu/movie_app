import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/models/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user.freezed.dart';

@freezed
class CreateUser with _$CreateUser implements AppAction {
  const factory CreateUser({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
  }) = CreateUserStart;

  const factory CreateUser.successful(AppUser user) = CreateUserSuccessful;

  @Implements<ErrorAction>()
  const factory CreateUser.error(Object error, StackTrace stackTrace) = CreateUserError;
}
