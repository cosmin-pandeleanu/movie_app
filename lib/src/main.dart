import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curs_flutter/src/actions/index.dart';
import 'package:curs_flutter/src/data/auth_api.dart';
import 'package:curs_flutter/src/data/movie_api.dart';
import 'package:curs_flutter/src/epics/app_epic.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:curs_flutter/src/presentation/comments_page.dart';
import 'package:curs_flutter/src/presentation/home.dart';
import 'package:curs_flutter/src/presentation/login_page.dart';
import 'package:curs_flutter/src/presentation/sign_up_page.dart';
import 'package:curs_flutter/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);

  final Client client = Client();
  final MovieApi movieApi = MovieApi(client, firestore);
  final AuthApi authApi = AuthApi(auth, firestore);
  final AppEpic epic = AppEpic(movieApi, authApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()),
    ],
  )..dispatch(const GetCurrentUser());

  runApp(MovieApp(store: store));
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/signUp': (BuildContext context) => const SignUpPage(),
          '/login': (BuildContext context) => const LoginPage(),
          '/comments': (BuildContext context) => const CommentsPage(),
        },
      ),
    );
  }
}
