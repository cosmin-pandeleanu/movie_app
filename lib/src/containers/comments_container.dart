import 'package:curs_flutter/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Comment>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Comment>>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.comments
            .where((Comment comment) => comment.movieId == store.state.selectedMovieId)
            .where((Comment comment) => store.state.users[comment.uid] != null)
            .toList();
      },
    );
  }
}
