import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curs_flutter/src/data/auth_api.dart';
import 'package:curs_flutter/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockFirebaseAuth with Mock implements FirebaseAuth {}

class MockFirebaseFirestore with Mock implements FirebaseFirestore {}

class MockDocumentReference with Mock implements DocumentReference<Map<String, dynamic>> {}

class MockDocumentSnapshot with Mock implements DocumentSnapshot<Map<String, dynamic>> {}

Future<void> main()async{
  final Map<String, dynamic> userData =
    jsonDecode(File(r'.\test\unit\reducer\res\user.json').readAsStringSync()) as Map<String, dynamic>;
  late FirebaseAuth auth;
  late MockFirebaseFirestore firestore;
  late MockDocumentReference ref;
  late MockDocumentSnapshot snapshot;
  late AuthApi api;

  setUp((){
    auth = MockFirebaseAuth();
    firestore = MockFirebaseFirestore();
    ref = MockDocumentReference();
    snapshot = MockDocumentSnapshot();

    api = AuthApi(auth, firestore);
  });

  test('logout', () async {
    when(auth.signOut).thenAnswer((_) async{});

    await api.logout();

    final VerificationResult result = verify(auth.signOut);
    expect(result.callCount, 1);
  });

  test('getUser', () async {
    when(() => firestore.doc(captureAny())).thenReturn(ref);
    when(() => ref.get()).thenAnswer((_) async => snapshot);
    when(snapshot.data).thenReturn(userData);


    const String uid = 'uid';
    final AppUser expected = await api.getUser(uid);
    
    expect(expected, AppUser.fromJson(userData));

    final VerificationResult result = verify(() => firestore.doc(captureAny()));

    expect(result.captured[0], 'users/$uid');
  });
}
