import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/containers/comments_container.dart';
import 'package:curs_flutter/src/containers/selected_movie_container.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(ListenForComments.start(_store.state.selectedMovieId!));
  }

  @override
  void dispose() {
    _store.dispatch(ListenForComments.done(_store.state.selectedMovieId!));

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectedMovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text(movie.title)),
            backgroundColor: Colors.blueGrey,
          ),
          body: CommentsContainer(
            builder: (BuildContext context, List<Comment> comments) {
              if (comments.isEmpty) {
                return const Center(
                  child: Text('No comments.'),
                );
              }

              return ListView.builder(
                itemCount: comments.length,
                itemBuilder: (BuildContext context, int index) {
                  final Comment comment = comments[index];
                  return ListTile(
                    title: Text(comment.text),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
