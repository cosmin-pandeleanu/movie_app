part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Movie>[]) List<Movie> movies,
    @Default(1) int pageNumber,
    @Default('') String genre,
    AppUser? user,
    @Default(<String>{}) Set<String> pending,
    @Default(<Comment>[]) List<Comment> comments,
    int? selectedMovieId,
    @Default(<String, AppUser>{}) Map<String /*uid*/, AppUser> users,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
