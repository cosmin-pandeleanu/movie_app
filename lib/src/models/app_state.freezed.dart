// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call({List<Movie> movies = const <Movie>[], bool isLoading = true, int pageNumber = 1, AppUser? user}) {
    return AppState$(
      movies: movies,
      isLoading: isLoading,
      pageNumber: pageNumber,
      user: user,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Movie> get movies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call({List<Movie> movies, bool isLoading, int pageNumber, AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? pageNumber = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
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
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) = _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call({List<Movie> movies, bool isLoading, int pageNumber, AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? pageNumber = freezed,
    Object? user = freezed,
  }) {
    return _then(AppState$(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$({this.movies = const <Movie>[], this.isLoading = true, this.pageNumber = 1, this.user});

  @JsonKey()
  @override
  final List<Movie> movies;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final int pageNumber;
  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AppState(movies: $movies, isLoading: $isLoading, pageNumber: $pageNumber, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith => _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$({List<Movie> movies, bool isLoading, int pageNumber, AppUser? user}) = _$AppState$;

  @override
  List<Movie> get movies;
  @override
  bool get isLoading;
  @override
  int get pageNumber;
  @override
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}
