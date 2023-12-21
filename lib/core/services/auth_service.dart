import 'package:firebase_auth/firebase_auth.dart';

import '../utility/exceptions/custom_exception.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Firebase authentication service methods

  Future signInAnon() async {
    try {
      final UserCredential authResult = await _auth.signInAnonymously();
      final user = authResult.user;
      return user;
    } catch (e) {
      FirebaseCustomException(e.toString());
    }
  }
}
