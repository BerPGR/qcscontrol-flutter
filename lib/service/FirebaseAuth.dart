import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future registerWithEmailAndPassword(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);

    if (_auth.currentUser?.displayName == null) {
      String? email = _auth.currentUser?.email;
      await _auth.currentUser?.updateDisplayName(email!.split("@")[0]);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
