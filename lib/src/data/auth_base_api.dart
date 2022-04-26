import 'package:curs_flutter/src/models/index.dart';

abstract class AuthApiBase {
  Future<AppUser> create({required String email, required String password, required String username});

  Future<AppUser?> getCurrentUser();

  Future<AppUser> login({required String email, required String password});

  Future<void> logout();

  Future<void> updateFavorites(int id, {required bool add});
}
