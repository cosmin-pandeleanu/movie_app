// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetCurrentUserTearOff {
  const _$GetCurrentUserTearOff();

  GetCurrentUserStart call() {
    return const GetCurrentUserStart();
  }

  GetCurrentUserSuccessful successful(AppUser? user) {
    return GetCurrentUserSuccessful(
      user,
    );
  }

  GetCurrentUserError error(Object error, StackTrace stackTrace) {
    return GetCurrentUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetCurrentUser = _$GetCurrentUserTearOff();

/// @nodoc
mixin _$GetCurrentUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  final GetCurrentUser _value;
  // ignore: unused_field
  final $Res Function(GetCurrentUser) _then;
}

/// @nodoc
abstract class $GetCurrentUserStartCopyWith<$Res> {
  factory $GetCurrentUserStartCopyWith(GetCurrentUserStart value, $Res Function(GetCurrentUserStart) then) =
      _$GetCurrentUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserStartCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserStartCopyWith<$Res> {
  _$GetCurrentUserStartCopyWithImpl(GetCurrentUserStart _value, $Res Function(GetCurrentUserStart) _then)
      : super(_value, (v) => _then(v as GetCurrentUserStart));

  @override
  GetCurrentUserStart get _value => super._value as GetCurrentUserStart;
}

/// @nodoc

class _$GetCurrentUserStart implements GetCurrentUserStart {
  const _$GetCurrentUserStart();

  @override
  String toString() {
    return 'GetCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is GetCurrentUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserStart implements GetCurrentUser {
  const factory GetCurrentUserStart() = _$GetCurrentUserStart;
}

/// @nodoc
abstract class $GetCurrentUserSuccessfulCopyWith<$Res> {
  factory $GetCurrentUserSuccessfulCopyWith(
          GetCurrentUserSuccessful value, $Res Function(GetCurrentUserSuccessful) then) =
      _$GetCurrentUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GetCurrentUserSuccessfulCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserSuccessfulCopyWith<$Res> {
  _$GetCurrentUserSuccessfulCopyWithImpl(GetCurrentUserSuccessful _value, $Res Function(GetCurrentUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentUserSuccessful));

  @override
  GetCurrentUserSuccessful get _value => super._value as GetCurrentUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(GetCurrentUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GetCurrentUserSuccessful implements GetCurrentUserSuccessful {
  const _$GetCurrentUserSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'GetCurrentUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentUserSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith =>
      _$GetCurrentUserSuccessfulCopyWithImpl<GetCurrentUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserSuccessful implements GetCurrentUser {
  const factory GetCurrentUserSuccessful(AppUser? user) = _$GetCurrentUserSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserErrorCopyWith<$Res> {
  factory $GetCurrentUserErrorCopyWith(GetCurrentUserError value, $Res Function(GetCurrentUserError) then) =
      _$GetCurrentUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetCurrentUserErrorCopyWithImpl<$Res> extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserErrorCopyWith<$Res> {
  _$GetCurrentUserErrorCopyWithImpl(GetCurrentUserError _value, $Res Function(GetCurrentUserError) _then)
      : super(_value, (v) => _then(v as GetCurrentUserError));

  @override
  GetCurrentUserError get _value => super._value as GetCurrentUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetCurrentUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$GetCurrentUserError implements GetCurrentUserError {
  const _$GetCurrentUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCurrentUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith =>
      _$GetCurrentUserErrorCopyWithImpl<GetCurrentUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserError implements GetCurrentUser, ErrorAction {
  const factory GetCurrentUserError(Object error, StackTrace stackTrace) = _$GetCurrentUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith => throw _privateConstructorUsedError;
}
