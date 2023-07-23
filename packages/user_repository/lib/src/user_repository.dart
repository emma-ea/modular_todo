import 'package:auth/auth.dart';
import 'package:domain_models/domain_models.dart';

class UserRepository {
  UserRepository(this._auth);

  final Auth _auth;

  Future<User> signIn(String email, String password) async {
    final res = await _auth.signIn(email, password);
    if (res) {
      return const User('John', 'url', 'Earth');
    }
    throw Exception('failed');
  }
}
