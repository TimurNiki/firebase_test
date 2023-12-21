import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //*FirebaseAuth to anonymous user

  Future signInAnon() async {
    try {
       final UserCredential authResult = await _auth.signInAnonymously();
       final user = authResult.user;
      return user;
    } catch (e) {
      print(e.toString());
      
    }
  }
}
