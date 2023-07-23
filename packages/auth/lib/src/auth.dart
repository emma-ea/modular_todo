import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  Auth({FirebaseAuth? auth}) : _auth = auth ?? FirebaseAuth.instance;

  final FirebaseAuth _auth;

  Future<bool> signIn(String email, String password) async {
    final res = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (res.user != null) return true;
    return false;
  }

  Future<bool> signUp() async {
    return false;
  }
}
