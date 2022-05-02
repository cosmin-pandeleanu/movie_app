import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/data/movie_api.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class MovieEpic {
  MovieEpic(this._api);

  final MovieApi _api;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      _getMovies,
      _getComments,
      TypedEpic<AppState, CreateCommentStart>(_createCommentStart),
    ]);
  }

  Stream<AppAction> _getMovies(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions
        .where((dynamic action) => action is GetMoviesStart || action is GetMoviesMore)
        .flatMap((dynamic action) {
      String pendingId = '';
      ActionResult onResult = (_) {};
      if (action is GetMoviesStart) {
        pendingId = action.pendingId;
        onResult = action.onResult;
      } else if (action is GetMoviesMore) {
        pendingId = action.pendingId;
        onResult = action.onResult;
      }

      return Stream<void>.value(null)
          .asyncMap((_) => _api.getMovies(store.state.pageNumber))
          .map<GetMovies>((List<Movie> movies) {
        return GetMovies.successful(movies, pendingId);
      }).onErrorReturnWith((Object error, StackTrace stackTrace) {
        return GetMovies.error(error, stackTrace, pendingId);
      }).doOnData(onResult);
    });
  }

  Stream<AppAction> _getComments(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForCommentsStart>().flatMap((ListenForCommentsStart action) {
      return _api.listenForComments(action.movieId).map<ListenForComments>($ListenForComments.event).takeUntil<dynamic>(
        actions.where((dynamic event) {
          return event is ListenForCommentsDone && event.movieId == action.movieId;
        }),
      ).onErrorReturnWith($ListenForComments.error);
    });
  }

  Stream<AppAction> _createCommentStart(Stream<CreateCommentStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateCommentStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return _api.createComment(
              uid: store.state.user!.uid,
              movieId: store.state.selectedMovieId!,
              text: action.text,
            );
          })
          .mapTo(const CreateComment.successful())
          .onErrorReturnWith($CreateComment.error);
    });
  }
}
